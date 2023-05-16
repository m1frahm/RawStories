const useNewStory = () => {
  const mutate = async (formData) => {
    try {
      const r = await fetch("/api/stories", {
        method: "POST",
        body: formData
      }).then((r) => (r.ok ? Promise.resolve(r) : Promise.reject(r)));
      const result = await r.json();

      console.log({ result });
    } catch (e) {
      console.log(e.message);
    }
  };

  return { mutate };
};

export default function AddNewStory() {
  const { mutate: createStory } = useNewStory();
  const handleSubmit = (event) => {
    event.preventDefault();

    const formData = new FormData(event.target);
    // const payload = Array.from(formData.entries()).reduce(
    //   //payload common name for data you send to back-end, look at dev console as well for ref
    //   (output, [inputName, inputValue]) => ({
    //     ...output,
    //     [inputName]: inputValue,
    //   }),
    //   {}
    // );

    createStory(formData)
      .then(() => {
        console.log("yei");
      })
      .catch((e) => {
        console.log("oops", e);
      });
  };

  return (
    <div>
      <form onSubmit={handleSubmit} encType="multipart/form-data">
        <input placeholder="Title of Post" type="text" name="postTitle" />
        <input placeholder="Name of Person" type="text" name="personName" />
        <input placeholder="Person Occupation"type="text" name="personOccupation" />
        <input placeholder="Person Alma Matter"type="text" name="personAlmaMatter" />
        <input placeholder="Add Story Text Here"type="text" name="personStory" />
        <input placeholder="Excerpt"type="text" name="personStoryExcerpt" />
        <input type="file" name="postImage" />
        <button type="submit">Add New Story</button>
      </form>
    </div>
  );
}
