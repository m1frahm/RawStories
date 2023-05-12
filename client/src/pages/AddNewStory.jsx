const useNewStory = () => {
  const mutate = async (formData) => {
    try {
      const r = await fetch("http://localhost:8090/api/stories", {
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
        <input type="text" name="postTitle" />
        <input type="text" name="personName" />
        <input type="text" name="personOccupation" />
        <input type="text" name="personAlmaMatter" />
        <input type="text" name="personStory" />
        <input type="text" name="personStoryExcerpt" />
        <input type="file" name="postImage" />
        <button type="submit">Add New Story</button>
      </form>
    </div>
  );
}
